/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.unomi.modules.mftraining.actions;

import org.apache.unomi.api.*;
import org.apache.unomi.api.actions.Action;
import org.apache.unomi.api.actions.ActionExecutor;
import org.apache.unomi.api.services.EventService;
import org.apache.unomi.api.services.ProfileService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Collections;

/**
 * Increments the number of times the user associated with the profile tweeted.
 */
public class IncrementAwesomeButtonNumberAction implements ActionExecutor {
    private static final String AWESOMEBUTTON_NB_PROPERTY = "awesomeButtonClickNb";
    private static final Logger logger = LoggerFactory.getLogger(IncrementAwesomeButtonNumberAction.class.getName());
    private static final String TARGET = "profiles";

    private ProfileService service;

    public int execute(Action action, Event event) {
        final Profile profile = event.getProfile();
        Integer clickNb = (Integer) profile.getProperty(AWESOMEBUTTON_NB_PROPERTY);

        logger.info("profile " + profile);
        logger.info("tweetNb " + clickNb);

        // TODO: remove this block and create the property from a JSON file.
        if (clickNb == null ) {
            // create tweet number property type
            PropertyType propertyType = new PropertyType(new Metadata(event.getScope(), AWESOMEBUTTON_NB_PROPERTY, AWESOMEBUTTON_NB_PROPERTY, "Awesome Button Click Number"));
            propertyType.setValueTypeId("integer");
            //propertyType.setTagIds(Collections.singleton("basicProfileProperties"));
            propertyType.setTarget("profiles");
            service.setPropertyType(propertyType);
            clickNb = 0;
        }

        profile.setProperty(AWESOMEBUTTON_NB_PROPERTY, clickNb + 1);
        return EventService.PROFILE_UPDATED;
    }

    public void setProfileService(ProfileService service) {
        this.service = service;
    }

    private String extractSourceURL(Event event) {
        final Item sourceAsItem = event.getSource();
        if (sourceAsItem instanceof CustomItem) {
            CustomItem source = (CustomItem) sourceAsItem;
            final String url = (String) source.getProperties().get("url");
            if (url != null) {
                return url;
            }
        }

        return null;
    }
}
